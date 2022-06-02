package com.example.afinal.ui.galeri;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelProvider;

import com.example.afinal.databinding.FragmentGaleriBinding;

public class GaleriFragment extends Fragment {

    private FragmentGaleriBinding binding;

    public View onCreateView(@NonNull LayoutInflater inflater,
                             ViewGroup container, Bundle savedInstanceState) {
        GaleriViewModel galeriViewModel =
                new ViewModelProvider(this).get(GaleriViewModel.class);

        binding = FragmentGaleriBinding.inflate(inflater, container, false);
        View root = binding.getRoot();

        final TextView textView = binding.textGaleri;
        galeriViewModel.getText().observe(getViewLifecycleOwner(), textView::setText);
        return root;
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        binding = null;
    }
}