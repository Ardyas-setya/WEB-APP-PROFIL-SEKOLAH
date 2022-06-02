package com.example.afinal.ui.guru;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelProvider;

import com.example.afinal.databinding.FragmentGuruBinding;

public class GuruFragment extends Fragment {

    private FragmentGuruBinding binding;

    public View onCreateView(@NonNull LayoutInflater inflater,
                             ViewGroup container, Bundle savedInstanceState) {
        GuruViewModel guruViewModel =
                new ViewModelProvider(this).get(GuruViewModel.class);

        binding = FragmentGuruBinding.inflate(inflater, container, false);
        View root = binding.getRoot();

        final TextView textView = binding.textGuru;
        guruViewModel.getText().observe(getViewLifecycleOwner(), textView::setText);
        return root;
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        binding = null;
    }
}